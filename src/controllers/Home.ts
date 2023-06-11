import Locals from '../../providers/Locals';

class Home {
	public static index(req, res, next): any {
		return res.json({
			message: "Hi there!", //Locals.config().name
		});
	}
}

export default Home;
